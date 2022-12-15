data "aws_ssoadmin_instances" "this" {
}

data "aws_identitystore_user" "this" {
  count = var.user_name == null ? 0 : 1

  identity_store_id = tolist(data.aws_ssoadmin_instances.this.identity_store_ids)[0]

  alternate_identifier {
    unique_attribute {
      attribute_path  = "UserName"
      attribute_value = var.user_name
    }
  }
}

data "aws_identitystore_group" "this" {
  count = var.group_name == null ? 0 : 1

  identity_store_id = tolist(data.aws_ssoadmin_instances.this.identity_store_ids)[0]

  alternate_identifier {
    unique_attribute {
      attribute_path  = "DisplayName"
      attribute_value = var.group_name
    }
  }
}

resource "aws_ssoadmin_account_assignment" "this" {
  for_each = toset(var.accounts)

  instance_arn       = tolist(data.aws_ssoadmin_instances.this.arns)[0]
  permission_set_arn = var.permission_set_arn

  principal_id   = var.user_name == null ? data.aws_identitystore_group.this[0].group_id : data.aws_identitystore_user.this[0].user_id
  principal_type = var.user_name == null ? "GROUP" : "USER"

  target_id   = each.key
  target_type = "AWS_ACCOUNT"
}
