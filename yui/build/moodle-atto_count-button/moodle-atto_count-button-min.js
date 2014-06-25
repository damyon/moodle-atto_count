YUI.add("moodle-atto_count-button",function(e,t){var n="atto_count",r='<form class="atto_form"><p><label class="sameline">{{get_string "wordsinalltext" component}}</label><span>{{allTextWords}}</span></p><p><label class="sameline">{{get_string "lettersinalltext" component}}</label><span>{{allTextLetters}}</span></p></form>';e.namespace("M.atto_count").Button=e.Base.create("button",e.M.editor_atto.EditorPlugin,[],{initializer:function(){this.addButton({callback:this._displayDialogue,icon:"icon",iconComponent:"atto_count"})},_displayDialogue:function(){var e=this.getDialogue({headerContent:M.util.get_string("countwordsandletters",n)});e.set("bodyContent",this._getDialogueContent()),e.show()},_getDialogueContent:function(){var t=e.Handlebars.compile(r),i,s,o;i=M.cfg.wwwroot+"/lib/editor/atto/plugins/count/ajax.php",s={sesskey:M.cfg.sesskey,alltext:this.get("host").getCleanHTML()},o=e.io(i,{sync:!0,data:s,method:"POST"});if(o.status!==200)throw new M.core.ajaxException(o.responsetext);return o=e.JSON.parse(o.responseText),this._content=e.Node.create(t({component:n,allTextWords:o.allTextWords,allTextLetters:o.allTextLetters})),this._content}})},"@VERSION@",{requires:["io","json-parse","moodle-editor_atto-plugin"]});
