locals = {
  secrets_list = [
    {
      description             = "TEST_SECRETS"
      name                    = "TEST_LICENSE_KEY"
      policy                  = ""
      recovery_window_in_days = "0"
      tags                    = {}
      secrets = [
        {
          secret_key_value = {}
        }
      ]
    }
  ]
}
module "aws_secrets" {
  source   = "../.."
  for_each = { for secret in local.secrets_list : secret.name => secret }

  description             = each.value.description
  name                    = each.value.name
  policy                  = each.value.policy
  recovery_window_in_days = each.value.recovery_window_in_days
  tags = merge(
    each.value.tags
  )
  secrets = each.value.secrets
}