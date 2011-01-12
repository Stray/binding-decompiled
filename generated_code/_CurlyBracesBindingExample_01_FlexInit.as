package 
{
    import mx.core.*;
    import mx.effects.*;
    import mx.styles.*;

    public class _CurlyBracesBindingExample_01_FlexInit extends Object {

        public function _CurlyBracesBindingExample_01_FlexInit() {
            return;
        }
        public static function init(param1:IFlexModuleFactory) : void {
            var _loc_4:* = EffectManager;
            _loc_4.mx_internal::registerEffectTrigger("addedEffect", "added");
            var _loc_4:* = EffectManager;
            _loc_4.mx_internal::registerEffectTrigger("creationCompleteEffect", "creationComplete");
            var _loc_4:* = EffectManager;
            _loc_4.mx_internal::registerEffectTrigger("focusInEffect", "focusIn");
            var _loc_4:* = EffectManager;
            _loc_4.mx_internal::registerEffectTrigger("focusOutEffect", "focusOut");
            var _loc_4:* = EffectManager;
            _loc_4.mx_internal::registerEffectTrigger("hideEffect", "hide");
            var _loc_4:* = EffectManager;
            _loc_4.mx_internal::registerEffectTrigger("mouseDownEffect", "mouseDown");
            var _loc_4:* = EffectManager;
            _loc_4.mx_internal::registerEffectTrigger("mouseUpEffect", "mouseUp");
            var _loc_4:* = EffectManager;
            _loc_4.mx_internal::registerEffectTrigger("moveEffect", "move");
            var _loc_4:* = EffectManager;
            _loc_4.mx_internal::registerEffectTrigger("removedEffect", "removed");
            var _loc_4:* = EffectManager;
            _loc_4.mx_internal::registerEffectTrigger("resizeEffect", "resize");
            var _loc_4:* = EffectManager;
            _loc_4.mx_internal::registerEffectTrigger("rollOutEffect", "rollOut");
            var _loc_4:* = EffectManager;
            _loc_4.mx_internal::registerEffectTrigger("rollOverEffect", "rollOver");
            var _loc_4:* = EffectManager;
            _loc_4.mx_internal::registerEffectTrigger("showEffect", "show");
            var _loc_2:Array = ["fontWeight", "modalTransparencyBlur", "textRollOverColor", "backgroundDisabledColor", "textIndent", "barColor", "fontSize", "kerning", "textAlign", "fontStyle", "modalTransparencyDuration", "textSelectedColor", "modalTransparency", "fontGridFitType", "disabledColor", "fontAntiAliasType", "modalTransparencyColor", "leading", "dropShadowColor", "themeColor", "indicatorGap", "letterSpacing", "fontFamily", "color", "fontThickness", "labelWidth", "errorColor", "fontSharpness", "textDecoration"];
            var _loc_3:int = 0;
            while (_loc_3 < _loc_2.length){
                
                StyleManager.registerInheritingStyle(_loc_2[_loc_3]);
                _loc_3++;
            }
            return;
        }
    }
}
