for(var i = 0; i < 29; i++) { var scriptId = 'u' + i; window[scriptId] = document.getElementById(scriptId); }

$axure.eventManager.pageLoad(
function (e) {

});

u28.style.cursor = 'pointer';
$axure.eventManager.click('u28', function(e) {

if (true) {

	self.location.href=$axure.globalVariableProvider.getLinkUrl('3_3_2_1添加快捷信息.html');

}
});
document.getElementById('u8_img').tabIndex = 0;

u8.style.cursor = 'pointer';
$axure.eventManager.click('u8', function(e) {

if (true) {

	self.location.href="javascript:history.back()";

}
});
gv_vAlignTable['u1'] = 'center';gv_vAlignTable['u26'] = 'top';
u11.style.cursor = 'pointer';
$axure.eventManager.click('u11', function(e) {

if (true) {

	SetPanelState('u10', 'pd0u10','none','',500,'none','',500);

	SetPanelVisibility('u16','hidden','none',500);

	MoveWidgetBy('u23', GetNum('-20'), GetNum('0'),'linear',500);

}
});
gv_vAlignTable['u3'] = 'center';
u12.style.cursor = 'pointer';
$axure.eventManager.click('u12', function(e) {

if (true) {

	SetPanelState('u10', 'pd1u10','none','',500,'none','',500);

	SetPanelVisibility('u16','','none',500);

	MoveWidgetBy('u23', GetNum('20'), GetNum('0'),'linear',500);

}
});
gv_vAlignTable['u9'] = 'center';
u27.style.cursor = 'pointer';
$axure.eventManager.click('u27', function(e) {

if (true) {

	self.location.href="resources/reload.html#" + encodeURI($axure.globalVariableProvider.getLinkUrl($axure.pageData.url));


}
});
gv_vAlignTable['u7'] = 'center';gv_vAlignTable['u24'] = 'top';gv_vAlignTable['u25'] = 'top';gv_vAlignTable['u18'] = 'center';gv_vAlignTable['u20'] = 'center';gv_vAlignTable['u5'] = 'center';gv_vAlignTable['u22'] = 'center';