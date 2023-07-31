
using System;

namespace CNN
{
    public static class Helper 
    {
        // applies padding to a channel in a reference buffer
        public static void Padding(ref float[] buffer, int channelHeight, 
                                   int channelWidth, int padHeight, int padWidth, float padVal
        )
        {
            int newWidth = channelWidth + 2 * padWidth;
            int newHeight = channelHeight + 2 * padHeight;
            // top and bottom
            for (int ii = 0; ii < padHeight; ii++)
            {
                for (int jj = 0; jj < newWidth; jj++)
                {
                    buffer[ii * newWidth + jj] = padVal;

                    buffer[(newHeight - ii - 1) * newWidth + jj] = padVal;
                }
            }
            // sides
            for (int jj = 0; jj < padWidth; jj++)
            {
                for (int ii = padHeight; ii < channelHeight + padHeight; ii++)
                {
                    buffer[ii * newWidth + jj] = padVal;

                    buffer[ii * newWidth + newWidth - jj - 1] = padVal;
                }
            }
        }
        // fills in weights to a buffer, where one or multiple channels are already stored
        public static void FillInWeights(ref float[] buffer, float[] weights, int startIndex)
        {
            for (int i = 0; i < weights.Length; i++)
            {
                buffer[i + startIndex] = weights[i];
            }
        }
    }   
}
