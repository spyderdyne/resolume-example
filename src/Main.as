/**
 *    Very basic Resolume Flash communication AS3 DocumentClass example
 **/

package
{
import flash.display.MovieClip;

//import the resolume communication classes
import resolumeCom.*;
import resolumeCom.parameters.*;
import resolumeCom.events.*;

public class Resolume3Example1CS4AS3 extends MovieClip
{
    //create the resolume object that will do all the hard work for you
    var resolume:Resolume = new Resolume();

    //create as many different parameters as you like
    var scaleX:FloatParameter = resolume.addFloatParameter("Scale X", 0.5);

    public function Resolume3Example1CS4AS3():void
    {
        //set callback, this will notify us when a parameter has changed
        resolume.addParameterListener(parameterChanged);
    }

    //this will be called every time you change a parameter in Resolume
    public function parameterChanged(event:ChangeEvent): void
    {
        //check to see what parameter was changed
        if (event.object == this.scaleX)
        {
            //now it gets interesting
            //do whatever you like with the value of the parameter
            this.logo.scaleX = this.paramScaleX.getValue() * 2.0;
        }
    }
}
}