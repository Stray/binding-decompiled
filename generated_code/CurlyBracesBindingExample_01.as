package 
{
    import flash.utils.*;
    import mx.binding.*;
    import mx.containers.*;
    import mx.controls.*;
    import mx.core.*;
    import mx.events.*;
    import mx.styles.*;

    public class CurlyBracesBindingExample_01 extends Application implements IBindingClient {
        private var _377160510sourceTextInput:TextInput;
        private var _711713327destinationTextInput:TextInput;
        var _bindings:Array;
        var _watchers:Array;
        var _bindingsByDestination:Object;
        var _bindingsBeginWithWord:Object;
        private var _documentDescriptor_:UIComponentDescriptor;
        private static var _watcherSetupUtil:IWatcherSetupUtil;
        static var _CurlyBracesBindingExample_01_StylesInit_done:Boolean = false;

        public function CurlyBracesBindingExample_01() {
            _documentDescriptor_ = new UIComponentDescriptor({type:Application, propertiesFactory:function () : Object {
                return {childDescriptors:[new UIComponentDescriptor({type:Form, propertiesFactory:function () : Object {
                    return {childDescriptors:[new UIComponentDescriptor({type:FormItem, propertiesFactory:function () : Object {
                        return {label:"the source:", childDescriptors:[new UIComponentDescriptor({type:TextInput, id:"sourceTextInput"})]};
                    }                    }), new UIComponentDescriptor({type:FormItem, propertiesFactory:function () : Object {
                        return {label:"the destination:", childDescriptors:[new UIComponentDescriptor({type:TextInput, id:"destinationTextInput"})]};
                    }                    })]};
                }                })]};
            }            });
            _bindings = [];
            _watchers = [];
            _bindingsByDestination = {};
            _bindingsBeginWithWord = {};
            mx_internal::_document = this;
            if (!this.styleDeclaration){
                this.styleDeclaration = new CSSStyleDeclaration();
            }
            this.styleDeclaration.defaultFactory = function () : void {
                this.backgroundColor = 16777215;
                return;
            }            ;
            .mx_internal::_CurlyBracesBindingExample_01_StylesInit();
            this.layout = "horizontal";
            this.viewSourceURL = "srcview/index.html";
            return;
        }
        public function get sourceTextInput() : TextInput {
            return this._377160510sourceTextInput;
        }
        function _CurlyBracesBindingExample_01_StylesInit() : void {
            var _loc_1:CSSStyleDeclaration = null;
            var _loc_2:Array = null;
            if (mx_internal::_CurlyBracesBindingExample_01_StylesInit_done){
                return;
            }
            mx_internal::_CurlyBracesBindingExample_01_StylesInit_done = true;
            var _loc_3:* = StyleManager;
            _loc_3.mx_internal::initProtoChainRoots();
            return;
        }
        private function _CurlyBracesBindingExample_01_bindingExprs() : void {
            var _loc_1:* = undefined;
            _loc_1 = sourceTextInput.text;
            return;
        }
        public function get destinationTextInput() : TextInput {
            return this._711713327destinationTextInput;
        }
        override public function initialize() : void {
            var target:CurlyBracesBindingExample_01;
            var watcherSetupUtilClass:Object;
            .mx_internal::setDocumentDescriptor(_documentDescriptor_);
            var bindings:* = _CurlyBracesBindingExample_01_bindingsSetup();
            var watchers:Array;
            target;
            if (_watcherSetupUtil == null){
                watcherSetupUtilClass = getDefinitionByName("_CurlyBracesBindingExample_01WatcherSetupUtil");
                var _loc_2:* = watcherSetupUtilClass;
                _loc_2.watcherSetupUtilClass["init"](null);
            }
            _watcherSetupUtil.setup(this, function (param1:String) {
                return target[param1];
            }            , bindings, watchers);
            var i:uint;
            while (i < bindings.length){
                
                Binding(bindings[i]).execute();
                i = (i + 1);
            }
            mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
            mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
            super.initialize();
            return;
        }
        public function set sourceTextInput(param1:TextInput) : void {
            var _loc_2:* = this._377160510sourceTextInput;
            if (_loc_2 !== param1){
                this._377160510sourceTextInput = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "sourceTextInput", _loc_2, param1));
            }
            return;
        }
        private function _CurlyBracesBindingExample_01_bindingsSetup() : Array {
            var binding:Binding;
            var result:Array;
            binding = new Binding(this, function () : String {
                var _loc_1:* = sourceTextInput.text;
                var _loc_2:* = _loc_1 == undefined ? (null) : (String(_loc_1));
                return _loc_2;
            }            , function (param1:String) : void {
                destinationTextInput.text = param1;
                return;
            }            , "destinationTextInput.text");
            result[0] = binding;
            return result;
        }
        public function set destinationTextInput(param1:TextInput) : void {
            var _loc_2:* = this._711713327destinationTextInput;
            if (_loc_2 !== param1){
                this._711713327destinationTextInput = param1;
                this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this, "destinationTextInput", _loc_2, param1));
            }
            return;
        }
        public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void {
            _watcherSetupUtil = param1;
            return;
        }
    }
}
