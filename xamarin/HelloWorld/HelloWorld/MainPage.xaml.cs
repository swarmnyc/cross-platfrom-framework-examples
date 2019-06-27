using Xamarin.Forms;

namespace HelloWorld
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
            BackgroundColor = Device.RuntimePlatform == Device.Android ? Color.FromHex("#A5C639") : Color.FromHex("#999999");
        }
    }
}
