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
			double total = 0;

			var copy = new List<Score>(Scores);

			foreach (string position in Positions)
			{
				int n = _staringLineupDictionary[position];

				var scores = copy.Where(x => x.Position == position).Select(y => y.Amount).OrderByDescending(z => z).Take(n);

				foreach (double score in scores)
				{
					total += score;
					var toRemove = copy.Where(x => x.Amount == score).First();
					copy.Remove(toRemove);
				}
			}

			// Calculate Flex
			total += copy.Where(x => x.Position == "RB" || x.Position == "WR" || x.Position == "TE").Select(y => y.Amount).Max();

			return total;
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

		public void ClearAllScores()
		{
			Scores.Clear();
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