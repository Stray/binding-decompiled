package 
{
    import flash.display.*;
    import mx.binding.*;
    import mx.core.*;

    public class _CurlyBracesBindingExample_01WatcherSetupUtil extends Sprite implements IWatcherSetupUtil {

        public function _CurlyBracesBindingExample_01WatcherSetupUtil() {
            return;
        }
        public function setup(param1:Object, param2:Function, param3:Array, param4:Array) : void {
            param4[0] = new PropertyWatcher("sourceTextInput", {propertyChange:true}, [param3[0]], param2);
            param4[1] = new PropertyWatcher("text", {textChanged:true, change:false}, [param3[0]], null);
            param4[0].updateParent(param1);
            param4[0].addChild(param4[1]);
            return;
        }
        public static function init(param1:IFlexModuleFactory) : void {
            CurlyBracesBindingExample_01.watcherSetupUtil = new _CurlyBracesBindingExample_01WatcherSetupUtil;
            return;
        }
    }
}
