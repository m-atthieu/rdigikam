var albums_panel = { 
  title: 'albums', 
  iconCls: 'silk-camera',
  xtype: 'treepanel',
  autoScroll: true,
  loader: new Ext.tree.TreeLoader({ 
    dataUrl: '/album_path.json',
    requestMethod: 'GET'
  }),
  root: {
    nodeType: 'async',
    text: 'albums',
    draggable: false,
    id: 'root'
  },
	listeners: {
		render: function(treepanel){
			treepanel.getSelectionModel().on('selectionchange', function(tree, node){ 
				images_view_store.load({params: { node: node.id} });
			});
		}
	}
};
var dates_panel = { title: 'dates', xtype: 'panel', iconCls: 'silk-calendar' };
var tags_panel = { title: 'tags', xtype: 'panel', iconCls: 'silk-tag' };
var timeline_panel = { title: 'timeline', xtype: 'panel', iconCls: 'silk-date' };
var searches_panel = { title: 'searches', xtype: 'panel', iconCls: 'silk-find' };
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
var metadata_panel = {
  title: 'metadata', 
  xtype: 'panel',
  iconCls: 'silk-page',
  layout: 'fit',
  items: [
    {
      xtype: 'tabpanel',
      activeTab: 0,
      items: [
        { title: 'exif', xtype: 'panel', html: 'exif' },
        { title: 'makernote', xtype: 'panel', html: 'markernote' },
        { title: 'iptc', xtype: 'panel', html: 'iptc' },
        { title: 'xmp', xtype: 'panel', html: 'xmp' }
      ]
    }
  ]
};
var color_panel = { title: 'color', xtype: 'panel', iconCls: 'silk-color-wheel' };
var comments_tags_panel = { title: 'comment/tags', xtype: 'panel', iconCls: 'silk-comments' };
var geolocation_panel = { title: 'geolocation', xtype: 'panel', iconCls: 'silk-world' };
var tag_filters_panel = { title: 'tag filters', xtype: 'panel', iconCls: 'silk-tag-blue' };

var east_region = {
  region: 'east',
  xtype: 'panel',
  width: '20%',
  split: true,
  collapsible: true,
  layout: 'accordion',
  items: [ properties_panel, metadata_panel, color_panel, comments_tags_panel, geolocation_panel, tag_filters_panel ]
};

var images_view_store = new Ext.data.JsonStore({
	url: '/album_images.json',
	baseParams: { node: 'root' },
	requestMethod: 'GET',
	root: 'images',
	id: 'name',
	fields: [
		'name',
		'url',
		{name: 'shortName', mapping: 'name', convert: function(n){ return (n.length < 15? n: n.substr(0, 12) + '...'); } }
	]
});

var images_view = new Ext.DataView({
	itemSelector: 'div.thumb-wrap',
	style: 'overflow: auto;',
	store: images_view_store,
	tpl: new Ext.XTemplate('<tpl for="."><div class="thumb-wrap" id="{name}"><div class="thumb"><img src="/thumbnails/{thumbId}.jpg"/></div><span>{shortName}</span></div></tpl>')
});

var center_region = { 
	region: 'center', 
	xtype: 'panel',
	layout: 'fit',
	items: images_view
};

var layout = {
  layout: 'border',
  items: [ west_region, center_region, east_region ]
};
Ext.onReady(function(){
  var viewport = new Ext.Viewport(layout);
  viewport.doLayout();
});
