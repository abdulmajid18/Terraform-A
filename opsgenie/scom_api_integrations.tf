resource "opsgenie_api_integration" "scom_integration" {
  count = var.scom_enabled ? 1 : 0
  name = "SCOM Integration"
  type = "SCOM"

  responders {
    type = "user"
    id   = "${opsgenie_user.ross.id}"
  }

  enabled                        = true
  allow_write_access             = true
  ignore_responders_from_payload = true
  suppress_notifications         = true
  owner_team_id                  = "${opsgenie_team.opsgenie_scom_team.id}"
}