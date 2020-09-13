using Possible_Points_Calculator.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Possible_Points_Calculator.ViewModels
{
	public class MainViewModel : INotifyPropertyChanged
	{
		private MainModel _mainModel;
		private bool _configurePositionsPopupVisibility = false;
		private bool _hcChecked;
		private bool _kickerChecked;
		private bool _tdChecked;
		private bool _idpChecked;
		private bool _iopChecked;
		private bool _teChecked;
		private bool _qbChecked;
		private bool _rbChecked;
		private bool _wrChecked;
		private bool _dstChecked;

		public event PropertyChangedEventHandler PropertyChanged;

		public bool ConfigurePositionsPopupVisibility
		{
			get => _configurePositionsPopupVisibility;
			set
			{
				_configurePositionsPopupVisibility = value;
				OnPropertyChanged();
			}
		}

		public bool QbChecked
		{
			get => _qbChecked;
			set
			{
				_qbChecked = value;
				OnPropertyChanged();
				UpdatePositionList("QB", _qbChecked);
			}
		}

		public bool RbChecked
		{
			get => _rbChecked;
			set
			{
				_rbChecked = value;
				OnPropertyChanged();
				UpdatePositionList("RB", _rbChecked);
			}
		}

		public bool WrChecked
		{
			get => _wrChecked;
			set
			{
				_wrChecked = value;
				OnPropertyChanged();
				UpdatePositionList("WR", _wrChecked);
			}
		}

		public bool TeChecked
		{
			get => _teChecked;
			set
			{
				_teChecked = value;
				OnPropertyChanged();
				UpdatePositionList("TE", _teChecked);
			}
		}

		public bool IopChecked
		{
			get => _iopChecked;
			set
			{
				_iopChecked = value;
				OnPropertyChanged();
				UpdatePositionList("IOP", _iopChecked);
			}
		}

		public bool IdpChecked
		{
			get => _idpChecked;
			set
			{
				_idpChecked = value;
				OnPropertyChanged();
				UpdatePositionList("IDP", _idpChecked);
			}
		}

		public bool KickerChecked
		{
			get => _kickerChecked;
			set
			{
				_kickerChecked = value;
				OnPropertyChanged();
				UpdatePositionList("K", _kickerChecked);
			}
		}

		public bool HcChecked
		{
			get => _hcChecked;
			set
			{
				_hcChecked = value;
				OnPropertyChanged();
				UpdatePositionList("HC", _hcChecked);
			}
		}

		public bool DstChecked
		{
			get => _dstChecked;
			set
			{
				_dstChecked = value;
				OnPropertyChanged();
				UpdatePositionList("DST", _dstChecked);
			}
		}

		public ICommand ConfigurePositionsCommand => new RelayCommand<object>(ConfigurePositions);
		public ICommand PositionCheckCommand => new RelayCommand<object>(PositionCheck);
		public ICommand ConfigurePositionsDoneCommand => new RelayCommand<object>(ClosePopup);

		public MainViewModel()
		{
			_mainModel = new MainModel();
		}

		public void ConfigurePositions(object obj)
		{
			ConfigurePositionsPopupVisibility = true;
		}

		public void PositionCheck(object obj)
		{
		}

		public void ClosePopup(object obj)
		{
			ConfigurePositionsPopupVisibility = false;
		}

		private void UpdatePositionList(string position, bool status)
		{
			if (_mainModel.Positions.Contains(position) && !status)
			{
				_mainModel.Positions.Remove(position);
			}
			else if (!_mainModel.Positions.Contains(position) && status)
			{
				_mainModel.Positions.Add(position);
			}
		}

		protected void OnPropertyChanged([CallerMemberName] string name = null)
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
		}
	}
}