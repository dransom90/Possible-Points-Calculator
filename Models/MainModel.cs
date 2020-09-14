using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Possible_Points_Calculator.Models
{
	public class MainModel
	{
		private Dictionary<string, int> _staringLineupDictionary;
		public ObservableCollection<string> Positions { get; set; } = new ObservableCollection<string>();
		public List<Score> Scores { get; set; } = new List<Score>();

		public MainModel()
		{
			SetUpDictionary();
		}

		public void SubmitNewScore(string position, double score)
		{
			Score newScore = new Score() { Position = position, Amount = score };
			Scores.Add(newScore);
		}

		public double CalculatePotential()
		{
			return 0;
			// TODO:	Implement
		}

		public bool UpdateStartingLineup(string position, int starters)
		{
			if (_staringLineupDictionary.ContainsKey(position))
			{
				_staringLineupDictionary[position] = starters;
				return true;
			}
			else
			{
				return false;
			}
		}

		private void SetUpDictionary()
		{
			_staringLineupDictionary = new Dictionary<string, int>()
			{
				{"QB", 0 },
				{"RB", 0 },
				{"WR", 0 },
				{"TE", 0 },
				{"IOP", 0 },
				{"IDP", 0 },
				{"DST", 0 },
				{"K", 0 },
				{"HC", 0 }
			};
		}
	}
}