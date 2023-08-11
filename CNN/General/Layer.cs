using System;
using SME;
using SME.Components;

namespace CNN
{
    // Generic Layer class. All layer have an Input and Output bus, whose types vary depending on
    // the version of the layer implementation. These types are specified upon intialization.
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