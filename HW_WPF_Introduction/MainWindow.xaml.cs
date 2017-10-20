using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace HW_WPF_Introduction
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private List<User> users;
        private User currentUser;

        public MainWindow()
        {
            InitializeComponent();
            users = new List<User>();
            currentUser = new User();
        }

        private void Slider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            mainGrid.Background = new SolidColorBrush(Color.FromRgb((byte)sliderRed.Value, (byte)sliderGreen.Value, (byte)sliderBlue.Value));
        }

        private void SignUpButton_Click(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrEmpty(userTextBox.Text))
            {
                currentUser.Name = userTextBox.Text;
                currentUser.Red = (byte)sliderRed.Value;
                currentUser.Green = (byte)sliderGreen.Value;
                currentUser.Blue = (byte)sliderBlue.Value;
                users.Add(currentUser);
                BinaryFormatter binaryFormatter = new BinaryFormatter();
                using (FileStream fs = new FileStream("users.bin", FileMode.OpenOrCreate))
                {
                    binaryFormatter.Serialize(fs, users);
                }
            }
            else
            {
                userTextBox.Foreground = Brushes.Red;
                userTextBox.Text = "Incorrect";
            }
        }

        private void SignInButton_Click(object sender, RoutedEventArgs e)
        {
            BinaryFormatter binaryFormatter = new BinaryFormatter();
            using (FileStream fs = new FileStream("users.bin", FileMode.OpenOrCreate))
            {
                users = (List<User>)binaryFormatter.Deserialize(fs);
            }

            StringComparison[] comparisons = (StringComparison[])Enum.GetValues(typeof(StringComparison));
            
            foreach (User user in users)
            {
                foreach (var comparison in comparisons)
                {
                    if(String.Equals(user.Name, userTextBox.Text, comparison))
                    {
                        sliderRed.Value = user.Red;
                        sliderGreen.Value = user.Green;
                        sliderBlue.Value = user.Blue;
                    }
                }
            }
        }
    }
}
