object false

node :_response_info do
  { status: "ok" }
end

glue @tag do
  node(:id) { tag_url(@tag) }
  attribute :title
  node :details do
    {
      type: @tag.tag_type,
      description: @tag.description,
      parent: 'tbd' #@tag.parent_id
    }
  end
end
