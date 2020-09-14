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
		public ObservableCollection<string> Positions { get; set; } = new ObservableCollection<string>();
		public List<Score> Scores { get; set; } = new List<Score>();

		public void SubmitNewScore(string position, double score)
		{
			Score newScore = new Score() { Position = position, Amount = score };
			Scores.Add(newScore);
		}

		public double CalculatePotential()
		{
			// TODO:	Implement
		}
	}
}