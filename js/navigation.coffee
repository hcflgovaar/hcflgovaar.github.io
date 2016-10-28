---
---

$ ->

		navigationAPI = "{{ '/navigation.json' | prepend: site.baseurl }}"
		# navigationAPI = "http://hcflgov.net/api/navigation";

		templateDir = "{{ '/templates/navigation' | prepend: site.baseurl }}"

		$.getJSON(navigationAPI).success (data) ->

			# logo

			# header nav items
			$header_nav_items = $('#hc-main-nav-sections')
			$.get templateDir+'/header_nav_item.html', (templateData) ->
				template = _.template(templateData)
				_.each data.header.navigation.reverse(), (item) ->
					$header_nav_items.prepend(template(item: item, root_url: data.root_url))
					return
				return
			, 'html'
			return

			# # i want tos
			# $iwt_nav_items = $('#hc-main-nav-sections')
			# $.get templateDir+'/header_nav_item.html', (templateData) ->
			# 	template = _.template(templateData)
			# 	_.each data.header.navigation.reverse(), (item) ->
			# 		$header_nav_items.prepend(template(item: item, root_url: data.root_url))
			# 		return
			# 	return
			# , 'html'
			# return

			# footer
