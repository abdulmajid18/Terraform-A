# resource "opsgenie_integration_action" "scom_action" {
#   integration_id = opsgenie_api_integration.scom_integration.id

#   create {
#     name = "create action"
#     tags = ["CRITICAL", "SEV-0"]
#     user = "Example-service"
#     note = "{{note}}"
#     alias         = "{{alias}}"
#     source        = "{{source}}"
#     message       = "{{message}}"
#     description   = "{{description}}"
#     entity        = "{{entity}}"
#     alert_actions = ["Runbook ID#342"]

#     filter {
#       type = "match-all-conditions"
#       conditions {
#         field          = "priority"
#         operation      = "equals"
#         expected_value = "P1"
#       }
#     }
#     responders {
#       id   = "${opsgenie_team.opsgenie_scom_team.id}"
#       type = "team"
#     }
#   }

#   create {
#     name = "create action with multiline description"
#     message       = "{{message}}"
#     description   = chomp(<<-EOT
#             This
#             is a multiline
#             description.
#         EOT
#     )
#     filter {
#       type = "match-all-conditions"
#       conditions {
#         field          = "priority"
#         operation      = "equals"
#         expected_value = "P1"
#       }
#     }
#   }

#   close {
#     name = "Low priority alerts"
#     filter {
#       type = "match-any-condition"
#       conditions {
#         field          = "priority"
#         operation      = "equals"
#         expected_value = "P5"
#       }
#       conditions {
#         field          = "message"
#         operation      = "contains"
#         expected_value = "DEBUG"
#       }
#     }
#   }

#   acknowledge {
#     name = "Auto-ack SCOM alerts"
#     filter {
#       type = "match-all-conditions"
#       conditions {
#         field          = "message"
#         not            = true
#         operation      = "contains"
#         expected_value = "Resolved"
#       }
#       conditions {
#         field          = "priority"
#         operation      = "equals"
#         expected_value = "P5"
#       }
#     }
#   }

#   add_note {
#     name = "Add note to all alerts"
#     note = "Created from SCOM integration"
#     filter {
#       type = "match-all"
#     }
#   }

#   ignore {
#     name = "Ignore alerts with ignore tag"
#     filter {
#       type = "match-all-conditions"
#       conditions {
#         field          = "tags"
#         operation      = "contains"
#         expected_value = "ignore"
#       }
#     }
#   }
# }