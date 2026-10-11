data "azurerm_servicebus_topic_authorization_rule" "servicebus_topic_authorization_rule_lookup" {
  for_each = var.servicebus_topic_authorization_rule_lookup

  name                = each.value.name
  namespace_name      = each.value.namespace_name
  queue_name          = each.value.queue_name
  resource_group_name = each.value.resource_group_name
  topic_id            = each.value.topic_id
  topic_name          = each.value.topic_name
}

