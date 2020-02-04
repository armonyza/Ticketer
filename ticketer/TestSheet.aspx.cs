using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ticketer
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ////////////////////////////////////////////////////
            //////////////////////////////////////////////////
            //fizzBuzzEasy();
            //fizzbuzz();

            //logicGate gate = new logicGate();
            ////gate.Run();
            ////fizzBuzzEasy();
            ////fizzbuzz();
            ///
            //Cow c1 = new Cow { Name = "Betsey" };
            //c1.Moo += giggle;
            //Cow c2 = new Cow { Name = "Georgy" };
            //c2.Moo += giggle;
            //Cow victim = new Random().Next() % 2 == 0 ? c1 : c2;
            //victim.BeTippedOver();

            testButton.Click += clickMethod;


        }

        static void clickMethod(object sender,EventArgs e)
        {
            Button b = (Button)sender;
            System.Diagnostics.Debug.WriteLine(b.Text);
        }

        static void giggle(object sender, CowTippingEventArgs e)
        {
            Cow c = sender as Cow;
            System.Diagnostics.Debug.WriteLine("giggle giggle .. we made " + c.Name + " moo!");
            switch(e.currentCowState)
            {
                case Cowstate.awake:
                    System.Diagnostics.Debug.WriteLine("run!!");
                    break;
                case Cowstate.sleeping:
                    System.Diagnostics.Debug.WriteLine("kick it!!");
                    break;
                case Cowstate.dead:
                    System.Diagnostics.Debug.WriteLine("Eat it!!");
                    break;
            }

        }

        public enum Cowstate
        {
            awake,
            sleeping,
            dead
        }

        class CowTippingEventArgs : EventArgs
        {
            public Cowstate currentCowState { get; set; }
            public CowTippingEventArgs(Cowstate currentState)
            {
                currentCowState = currentState;
            }
        }

        class Cow
        {
            public string Name { get; set; }
            public event EventHandler<CowTippingEventArgs> Moo;
            public void BeTippedOver()
            {

                //logic
                if(Moo != null)
                {
                    Moo(this, new CowTippingEventArgs(Cowstate.awake));
                }
            }
        }



        public void fizzbuzz()
        {
            for(int k = 1; k <= 100; k++)
            {
                string value = "";

                if(k % 3 ==0)
                {
                    value = value + "fizz";
                }
                if(k % 5 == 0)
                {
                    value = value + "buzz";
                }
                if (value == "")
                {
                    value = k.ToString();
                }

                System.Diagnostics.Debug.WriteLine(value);

            }
        }

        public void fizzBuzzEasy()
        {
           for(int k =1; k <=100; k++ )
            {
                if(k % 3 == 0 && k% 5 == 0)
                {
                    System.Diagnostics.Debug.WriteLine("fizzbuzz");

                }

                else if (k % 5 == 0)
                {
                    System.Diagnostics.Debug.WriteLine("buzz");
                }
                else if(k %3 == 0)
                {
                    System.Diagnostics.Debug.WriteLine("fizz");
                }
                else
                {
                    System.Diagnostics.Debug.WriteLine(k.ToString());
                }
            }
            
        }

        class logicGate
        {

            int Q1 = 0;
            int Q2 = 0;




            public void Run()
            {

                int R = 0;
                int S = 0;
                RGate(R, S);
                SGate(R, S);
                System.Diagnostics.Debug.WriteLine(S.ToString() + " " + R.ToString() + " " + Q1.ToString() + " " + Q2.ToString());

                R = 1;
                S = 0;
                RGate(R, S);
                SGate(R, S);
                System.Diagnostics.Debug.WriteLine(S.ToString() + " " + R.ToString() + " " + Q1.ToString() + " " + Q2.ToString());

                R = 0;
                S = 1;
                RGate(R, S);
                SGate(R, S);
                System.Diagnostics.Debug.WriteLine(S.ToString() + " " + R.ToString() + " " + Q1.ToString() + " " + Q2.ToString());

                R = 1;
                S = 1;
                RGate(R, S);
                SGate(R, S);
                System.Diagnostics.Debug.WriteLine(S.ToString() + " " + R.ToString() + " " + Q1.ToString() + " " + Q2.ToString());



            }



            public void OpenGate()
            {


            }                

            public void RGate(int Rinput, int Sinput)
            {
                int ValueChanged = Q1;

                if (Rinput == 1|| Q2 == 1 )
                {
                    Q1 = 0;
                }
                else
                {
                    Q1 = 1;
                }

                if (ValueChanged != Q1)
                {
                    SGate(Rinput, Sinput);
                }

            }

           public  void SGate(int Rinput,int Sinput)
            {
                int ValueChanged = Q2;

                if (Sinput == 1 || Q1 == 1)
                {
                    Q2 = 0;
                }
                else
                {
                    Q2 = 1;
                }

                if (ValueChanged != Q2)
                {
                    RGate(Rinput, Sinput);
                }
            }

            public void test()
            {

            }


        }

        
    }
}