
resource "opsgenie_team" "new_team" {
  name        = "Majid-Test"
  description = "This team is about hands on experience"
  member {
    id   = opsgenie_user.nuhu.id
    role = "admin"
  }
}

resource "opsgenie_team" "opsgenie_scom_team" {
  name        = "SCOM Team"
  description = "SCOM Alert management Team"
  member {
    id   = opsgenie_user.ross.id
    role = "admin"
  }
}