<!-- IF SCRIPT_NAME !== 'index' -->
<div class="container-fluid">
    <div class="panel panel-default">
        <div class="panel-heading text-center">Chat</div>
        <div class="panel-body">
            <table border="0" cellspacing="1" width="100%">
            <tr>
                <td style="padding:3px"<!-- IF CHAT_SHOW_CONNECTED --> colspan="3"<!-- ENDIF -->>
                    <div id="chatTopic" style="font-weight:bold">
                        <div id="chatArchiveLink" style="display: none; float: right;">
                            <a href="javascript:void(0);">[{L_CHAT_ARCHIVES}]</a>
                        </div>
                        <!-- IF CHAT_AUTH_MOD -->
                        <div id="chatAdminLink" style="display: none; float: right;">
                            <a href="javascript:void(0);">[{L_CHAT_ADMIN}]</a>
                        </div>
                        <div id="chatAdminMenu" style="display: none; float: right;">
                            <div id="chatAdminMenuDiv">
                                <a id="chatAdminMenuTopic" href="javascript:void(0);">[{L_CHAT_CHANGE_TOPIC}]</a>
                                <a id="chatAdminMenuBanned" href="javascript:void(0);">[{L_CHAT_BANNED_USERS}]</a>
                                <a id="chatAdminMenuClear" href="javascript:void(0);">[{L_CHAT_CLEAR_MSGS}]</a>
                                <a id="chatAdminMenuClose" href="javascript:void(0);">[{L_CHAT_CLOSE_ADMIN}]</a>
                            </div>
                        </div>
                        <div id="chatConnectLink" style="float: right;">
                            <a href="javascript:void(0);">[{L_CHAT_CONNECTION}]</a>
                        </div>
                        <div id="chatDisconnectLink" style="float: right;">
                            <a href="javascript:void(0);">[{L_CHAT_DISCONNECTION}]</a>
                        </div>
                        <div id="chatTopicContainer"></div>
                        <!-- ENDIF -->
                    </div>
                </td>
            </tr>
            <tr style="width: 100%;">
                <td style="padding: 0; width: 100%;">
                    <div id="chatList" style="height: 100px; overflow: auto; width: 100%;">
                        <table id="chatMsgContainer_table" class="table table-striped" width="100%">
                            <tbody id="chatMsgContainer">
                            </tbody>
                        </table>
                    </div>
                </td>
                <!-- IF CHAT_SHOW_CONNECTED -->
                <td id="chatGripTd" class="hidden">&nbsp;</td>
                <td class="row1 hidden">
                    <div id="chatConnectedDiv" style="width: 100%; height: 150px; overflow: auto;"></div>
                </td>
                <!-- ENDIF -->
            </tr>
            <tr>
                <td<!-- IF CHAT_SHOW_CONNECTED --> colspan="3"<!-- ENDIF -->>
                    <img src="http://img.xooimage.com/files5/d/6/7/grip-115818.gif" width="11" height="11" id="chatVGrip" class="hidden">
                    <img src="http://img.xooimage.com/files10/5/e/a/window-115821.gif" id="chatPopupButton" class="hidden">
                    <div class="btn-group btn-group-justified" role="group" style="margin-bottom: 15px;">
                        <div class="btn-group" role="group">
                            <input id="chatButtonG" type="button" class="btn btn-default" style="font-weight:bold" value="G">
                        </div>
                        <div class="btn-group" role="group">
                            <input id="chatButtonI" type="button" class="btn btn-default" style="font-style:italic" value="I">
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control input-lg" id="chatMsg" placeholder="Rédigez votre message ..." maxlength="100" required>
                    </div>
                    <input type="button" value="{L_SUBMIT}" onclick="xooitChat.sendMsg();" class="btn btn-success btn-block btn-lg">
                    <input id="chatButtonF" type="button" class="hidden" value="">
                    <input id="chatButtonC" type="button" class="hidden" value="">
                </td>
            </tr>
            </table>
        </div>
    </div>
</div>
{CHAT_JS}
<!-- ENDIF -->