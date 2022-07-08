SelectedScience = ""

function onObjectEnterZone(zone, object)
    if object == self then
        self.UI.setAttribute("scienceSelect", "active", false)
    end
end

function onObjectDrop(player, object)
    if object == self and #object.getZones() <= 0 then
        self.UI.setAttribute("scienceSelect", "active", true)
    end
end

function symbolClicked(player, value, id)
    self.UI.setAttribute(id, "isOn", value)
    if value == "True" then
        SelectedScience = id
    else
        SelectedScience = ""
    end
end