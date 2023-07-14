using System;
using SME;
using SME.Components;

namespace CNN
{

    public abstract class Layer<TInput, TOutput>
    {
        protected TInput input { get; set; }
        protected TOutput output { get; set; }
        
        public TInput Input
        {
            get => input;
            set => input = value;
        }
        
        public TOutput Output
        {
            get => output;
            set => output = value;
        }
        public abstract void PushInputs();
        
    }
}