waxClass{"CKLuaViewController", UIViewController, protocols={"UITableViewDataSource", "UITableViewDelegate"}}

function init(self)
    self.super:init()
    return self
end

function loadView(self)
    self.super:loadView()
    self:view():setBackgroundColor(UIColor:colorWithPatternImage(UIImage:imageNamed("main_view_bg.png")))
    self.settingsTable = UITableView:initWithFrame_style(CGRect(0.0, 0.0, 0.0, 0.0), UITableViewStyleGrouped)
    self.settingsTable:setFrame(CGRect(0.0, 0.0, 0.0, 0.0))
    self.settingsTable:setFrame(CGRect(0.0, 64, 320.0, 504))
    self.settingsTable:setDataSource(self)
    self.settingsTable:setDelegate(self)
    self.settingsTable:setAllowsMultipleSelection(false)
    self.settingsTable:setAllowsSelectionDuringEditing(false)
    self.settingsTable:setSeparatorStyle(UITableViewCellSeparatorStyleSingleLine)
    self.settingsTable:setBackgroundColor(UIColor:clearColor())
    self:view():addSubview(self.settingsTable)
end

function viewDidLoad(self)
    self.super:viewDidLoad()
end

function tableView_cellForRowAtIndexPath(self, tableView, indexPath)
    local cell = UITableViewCell:initWithStyle_reuseIdentifier(UITableViewCellStyleValue1, nil)
    cell:setBackgroundColor(UIColor:clearColor())
    cell:setAccessoryType(UITableViewCellAccessoryDisclosureIndicator)
    cell:setSelectionStyle(UITableViewCellSelectionStyleNone)
    if indexPath:row() == 0 then
        cell:textLabel():setText("第一行")
        cell:imageView():setImage(UIImage:imageNamed("settings_feedback.png"))
    elseif indexPath:row() == 1 then
        cell:textLabel():setText("第二行")
        cell:imageView():setImage(UIImage:imageNamed("settings_rate.png"))
    elseif indexPath:row() == 2 then
        cell:textLabel():setText("第三行")
        cell:imageView():setImage(UIImage:imageNamed("settings_rate.png"))
    end
    cell:textLabel():setFont(UIFont:systemFontOfSize(15.0))
    return cell
end

function tableView_didSelectRowAtIndexPath(self, tableView, indexPath)
    if indexPath:row() == 1 then
        print("点了第2行!")
    elseif indexPath:row() == 2 then
        print("点了第3行!")
    elseif indexPath:row() == 0 then
        local alertView = UIAlertView:initWithTitle_message_delegate_cancelButtonTitle_otherButtonTitles("LuaTest", "AlertNow", nil, "Cancel", nil)
        alertView:show()
    end
end

function tableView_numberOfRowsInSection(self, tableView, section)
    return 3
end

function numberOfSectionsInTableView(self, tableView)
    return 1
end

function pluginVersion(self)
    return 1
end
