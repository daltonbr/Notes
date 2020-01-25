using System;
using System.ComponentModel;
using System.Collections.ObjectModel;
using Xamarin.Forms;

namespace XamarinNotes
{
    public class MainPageViewModel : INotifyPropertyChanged
    {
        public MainPageViewModel()
        {
            EraseCommand = new Command(() =>
            {
                TheNote = string.Empty;
            });

            SaveCommand = new Command(() =>
            {
                AllNotes.Add(TheNote);
            });
        }

        public ObservableColletion<string> AllNotes { get; set; }

        public event PropertyChangedEventHandler PropertyChanged;

        private string theNote;
        public string TheNote
        {
            get => theNote;
            set
            {
                theNote = value;
                var args = new PropertyChangedEventArgs(nameof(TheNote));

                PropertyChanged?.Invoke(this, args);
            }
        }

        Command SaveCommand { get; }
        Command EraseCommand { get; }
    }
}
