-- Flatiron Multi Bake
-- Copyright 2022 3d-io GmbH
-- Contact: info@3d-plugin.com
-- Homepage: https://www.3d-plugin.com
-- Version 1.0

-- This is a helper tool for the 3d-io Flatiron plug-in and requires it to be
-- installed. It will not work on its own. Check https://www.texturebaking.com
-- for more details about Flatiron.

-- A convenient dialog to select multiple Flatiron bake groups and bake then
-- all in succession. This uses all bake settings as they currently are in
-- Flatiron. If different groups need individual bake settings this is beyond
-- the scope of this script but it can be used as a teplate for custom scripts.


macroScript FlatironMultiBake
	category:"3d-io"
	toolTip:"Flatiron Multi Bake"
	buttonText:"Flatiron Multi Bake"
	iconName:"FlatironMultiBake"
(

	groups = Flatiron.list_unwrap_groups()

	fn BakeGroups selectedGroups = (
		for i = 1 to groups.count do (
			if selectedGroups[i] do (
				Flatiron.bake groups[i]
			)
		)
	)

	rollout bakeRollout "Flatiron Multi Bake" (
		multilistbox groupList "Available Groups" items:groups selection:#{}

		button btnAll "All" width:50 across:3 align:#left
		on btnAll pressed do (
			groupList.selection = #{1..groupList.selection.count}
		)

		button btnNone "None" width:50 align:#center
		on btnNone pressed do (
			groupList.selection = #{}
		)

		button btnInvert "Invert" width:50 align:#right
		on btnInvert pressed do (
			groupList.selection = -groupList.selection
		)

		button btnRefresh "Refresh" width:100
		on btnRefresh pressed do (
			groups = Flatiron.list_unwrap_groups()
			groupList.items = groups
			groupList.selection = #{}
		)

		button btnBake "Bake" width:100 height:40
		on btnBake pressed do (
			BakeGroups groupList.selection
		)
		label about1 "3d-io Flatiron Multi Bake"
		label about2 "Version 1.0"
		label about3 "www.3d-plugin.com"
	)

	createDialog bakeRollout 200 320

)