/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author jrheingans1
 */
public class InMemoryMenuItemAccessor implements MenuItemAccessorStrategy {
    private List<MenuItem> items;
    
    public InMemoryMenuItemAccessor(){
        items = new ArrayList<MenuItem>();
        MenuItem item = new MenuItem("Porterhouse Steak", 29.95);
        items.add(item);
        item = new MenuItem("House Salad", 9.95);
        items.add(item);
        
    }
    
    @Override
    public List<MenuItem> getMenuItems() {
        return items;
    }
    
    
}
