module.exports = (robot) ->

	robot.hear /(ENR|ARHSDEV|PORT|MONITOR)-[0-9]+/i, (res) ->
    data =
      text: "*#{res.match[0]}*"
      attachments: [
        {
          title: "JIRA links"
          fields: [{
              value: "<https://webgate.ec.europa.eu/eures-support/browse/#{res.match[0]}|External JIRA>"
              short: true
          },{
              value: "<https://helpdesk2.arhs-developments.com/issues/?jql=text%20~%20%22%5C%22#{res.match[0]}%5C%22%22|Internal JIRA>"
              short: true
          }]
        }
      ]
    res.send data

	robot.hear /(DG(EMPLEURES)?)-([0-9]+)/i, (res) ->
    res.send "https://helpdesk2.arhs-developments.com/browse/DGEMPLEURES-#{res.match[3]}"
