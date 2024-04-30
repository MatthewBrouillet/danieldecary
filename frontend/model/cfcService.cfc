/*
services from legacy code
*/
component {
    property name="danieldecary" type="component";
    

	public component function init(){
        this.danieldecary = createObject("component", "model.cfc.danieldecary");
        return this;
    }
}
