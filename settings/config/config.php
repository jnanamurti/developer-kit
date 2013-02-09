<?php

$config = array();

/* Theme */
$config['view']['theme'] = 'default';




$config['head']['default']['js'] = Config::Get('head.default.js');
$config['head']['default']['js'][] = '___path.static.skin___/js/template.js';
/* Framework */
$config['head']['default']['js'][] = '___path.static.skin___/bootstrap/js/bootstrap.min.js';


$config['head']['default']['css'] = array(
	/* Framework */
	"___path.static.skin___/bootstrap/css/bootstrap.min.css",
	"___path.static.skin___/bootstrap/css/bootstrap-responsive.min.css",

	/* Structure */
	"___path.static.skin___/css/base.css",
	"___path.root.engine_lib___/external/jquery/markitup/skins/simple/style.css",
	"___path.root.engine_lib___/external/jquery/markitup/sets/default/style.css",
	"___path.root.engine_lib___/external/jquery/jcrop/jquery.Jcrop.css",
	"___path.root.engine_lib___/external/prettify/prettify.css",
	"___path.static.skin___/css/grid.css",
	"___path.static.skin___/css/common.css",
	"___path.static.skin___/css/text.css",
	"___path.static.skin___/css/forms.css",
	"___path.static.skin___/css/navs.css",
	"___path.static.skin___/css/icons.css",
	"___path.static.skin___/css/tables.css",
	"___path.static.skin___/css/topic.css",
	"___path.static.skin___/css/comments.css",
	"___path.static.skin___/css/blocks.css",
	"___path.static.skin___/css/modals.css",
	"___path.static.skin___/css/blog.css",
	"___path.static.skin___/css/profile.css",
	"___path.static.skin___/css/wall.css",
	"___path.static.skin___/css/infobox.css",
	"___path.static.skin___/css/jquery.notifier.css",
	"___path.static.skin___/css/smoothness/jquery-ui.css",
	"___path.static.skin___/css/responsive.css",
	
	/* Theme */
	"___path.static.skin___/themes/___view.theme___/style.css",
	
	/* Print */
	"___path.static.skin___/css/framework/print.css",
);


return $config;
?>