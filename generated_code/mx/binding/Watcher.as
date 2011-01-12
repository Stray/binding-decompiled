package mx.binding
{
    import mx.collections.errors.*;

    public class Watcher extends Object {
        protected var children:Array;
        public var value:Object;
        protected var cloneIndex:int;
        protected var listeners:Array;
        static const VERSION:String = "3.0.0.0";

        public function Watcher(param1:Array = null) {
            this.listeners = param1;
            return;
        }
        public function removeChildren(param1:int) : void {
            children.splice(param1);
            return;
        }
        public function updateChildren() : void {
            var _loc_1:int = 0;
            var _loc_2:int = 0;
            if (children){
                _loc_1 = children.length;
                _loc_2 = 0;
                while (_loc_2 < _loc_1){
                    
                    children[_loc_2].updateParent(this);
                    _loc_2++;
                }
            }
            return;
        }
        protected function shallowClone() : Watcher {
            return new Watcher();
        }
        protected function wrapUpdate(param1:Function) : void {
            var wrappedFunction:* = param1;
            try{
                wrappedFunction.apply(this);
            }
            catch (itemPendingError:ItemPendingError){
                value = null;
                ;
            }
            catch (rangeError:RangeError){
                value = null;
                ;
            }
            catch (error:Error){
                if (error.errorID != 1006 && error.errorID != 1009 && error.errorID != 1010 && error.errorID != 1055 && error.errorID != 1069){
                    throw error;
                }
            }
            return;
        }
        private function valueChanged(param1:Object) : Boolean {
            if (param1 == null && value == null){
                return false;
            }
            var _loc_2:* = typeof(value);
            if (_loc_2 == "string"){
                if (param1 == null && value == ""){
                    return false;
                }
                return param1 != value;
            }
            if (_loc_2 == "number"){
                if (param1 == null && value == 0){
                    return false;
                }
                return param1 != value;
            }
            if (_loc_2 == "boolean"){
                if (param1 == null && value == false){
                    return false;
                }
                return param1 != value;
            }
            return true;
        }
        public function notifyListeners(param1:Boolean) : void {
            var _loc_2:int = 0;
            var _loc_3:int = 0;
            if (listeners){
                _loc_2 = listeners.length;
                _loc_3 = 0;
                while (_loc_3 < _loc_2){
                    
                    listeners[_loc_3].watcherFired(param1, cloneIndex);
                    _loc_3++;
                }
            }
            return;
        }
        protected function deepClone(param1:int) : Watcher {
            var _loc_3:int = 0;
            var _loc_4:int = 0;
            var _loc_5:Watcher = null;
            var _loc_2:* = shallowClone();
            _loc_2.cloneIndex = param1;
            if (listeners){
                _loc_2.listeners = listeners.concat();
            }
            if (children){
                _loc_3 = children.length;
                _loc_4 = 0;
                while (_loc_4 < _loc_3){
                    
                    _loc_5 = children[_loc_4].deepClone(param1);
                    _loc_2.addChild(_loc_5);
                    _loc_4++;
                }
            }
            return _loc_2;
        }
        public function updateParent(param1:Object) : void {
            return;
        }
        public function addChild(param1:Watcher) : void {
            if (!children){
                children = [param1];
            }
            else{
                children.push(param1);
            }
            param1.updateParent(this);
            return;
        }
    }
}
