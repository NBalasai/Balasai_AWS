resource "aws_iam_user" "cloud" {
  name = "balasai"
}

resource "aws_iam_user" "cloud-count" {
  count = 5
  name  = "balasai-${count.index + 1}"
}

resource "aws_iam_user" "cloud-forset-user" {
  for_each = toset(["arun", "ram" , "varun"])
  name     = each.value
}

