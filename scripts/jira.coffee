module.exports = (robot) ->

	robot.hear /(ENR|ARHSDEV|PORT|MONITOR)-[0-9]+/i, (res) ->
		res.send "https://webgate.ec.europa.eu/eures-support/browse/#{res.match[0]}"

	robot.hear /(DGEMPLEURES)-[0-9]+/i, (res) ->
		res.send "https://helpdesk2.arhs-developments.com/browse/#{res.match[0]}"