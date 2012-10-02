object false

node :_response_info do
  { status: "ok" }
end

node(:total) { @results.count }
node(:startIndex) { 1 }
node(:pageSize) { @results.count }
node(:currentPage) { 1 }
node(:pages) { 1 }

node(:results) do
  @results.map { |r|
    {
      id: search_result_url(r),
      web_url: search_result_web_url(r),
      title: r['title'],
      details: {
        description: r['description']
      }
    }
  }
end
