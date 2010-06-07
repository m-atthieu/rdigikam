var albums_panel = { 
	title: 'albums', 
	iconCls: 'silk-camera',
	xtype: 'panel',
	dataUrl: '/album_roots.json'
};
var dates_panel = { title: 'dates', xtype: 'panel', iconCls: 'silk-calendar' };
var tags_panel = { title: 'tags', xtype: 'panel', iconCls: 'silk-tag' };
var timeline_panel = { title: 'timeline', xtype: 'panel' };
var searches_panel = { title: 'searches', xtype: 'panel' };
var map_searches_panel = { title: 'map searches', xtype: 'panel', iconCls: 'silk-world-go' };

var west_region = { 
	region: 'west',
        xtype: 'panel',
        width: '20%',
        split: true,
        collapsible: true,
        layout: 'accordion',
        items: [ albums_panel, dates_panel, tags_panel, searches_panel, map_searches_panel ]
};

var properties_panel = { title: 'properties', xtype: 'panel', iconCls: 'silk-information' };
var metadata_panel = { title: 'metadata', xtype: 'panel' };
var color_panel = { title: 'color', xtype: 'panel', iconCls: 'silk-color-wheel' };
var comments_tags_panel = { title: 'comment/tags', xtype: 'panel' };
var geolocation_panel = { title: 'geolocation', xtype: 'panel', iconCls: 'silk-world' };
var tag_filters_panel = { title: 'tag filters', xtype: 'panel' };

var east_region = {
	region: 'east',
        xtype: 'panel',
        width: '20%',
        split: true,
        collapsible: true,
        layout: 'accordion',
        items: [ properties_panel, metadata_panel, color_panel, comments_tags_panel, geolocation_panel, tag_filters_panel ]
};

var center_region = { region: 'center', xtype: 'panel' }

var layout = {
	layout: 'border',
	items: [ west_region, center_region, east_region ]
};
Ext.onReady(function(){
	var viewport = new Ext.Viewport(layout);
	viewport.doLayout();
});
