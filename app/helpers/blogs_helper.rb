# frozen_string_literal: true

module BlogsHelper
  def format_content(blog)
    tags = %w[a acronym b strong i em li ul ol h1 h2 h3 h4 h5 h6 blockquote br cite sub sup ins p]
    sanitize(
      h(blog.content).gsub("\n", '<br>'),
      tags:,
      attributes: %w[href title]
    )
  end
end
