public class Solution {
    public IList<int> GetRow(int rowIndex) {
        var triangle = new List<List<int>>(); 
        for (int i = 0; i <= rowIndex; i++) { 
            var rowLine = new List<int>(); 
            for (int j = 0; j <= i; j++) { 
                if (j == 0 || i == j) { 
                    rowLine.Add(1); 
                } else {
                    var previous = triangle[i - 1]; 
                    var newLine = previous[j - 1] + previous[j];          rowLine.Add(newLine); 
                    } 
            } triangle.Add(rowLine); 
        } 
        return triangle.Count > 0 ? triangle[triangle.Count - 1].ToArray() : Array.Empty<int>();
    }
}
