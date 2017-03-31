module.exports = (robot) ->

	robot.hear /(ENR|ARHSDEV|PORT)-[0-9]+/i, (res) ->
		res.send "https://webgate.ec.europa.eu/eures-support/browse/#{res.match[0]}"