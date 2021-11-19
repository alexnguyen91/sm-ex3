variable role {
  type = map(object({
    member     = set(string)
    maintainer = set(string)
  }))
}

variable member_list {
  type = map(object({
    role = string
  }))
}

