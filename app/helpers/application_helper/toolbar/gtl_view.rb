class ApplicationHelper::Toolbar::GtlView < ApplicationHelper::Toolbar::Basic
  button_group('gtl_main', [
    twostate(
      :view_grid,
      'fa fa-th',
      N_('Grid View'),
      nil,
      :klass     => ApplicationHelper::Button::View,
      :url       => "\#{@gtl_url}",
      :url_parms => "?type=grid"),
    twostate(
      :view_tile,
      'fa fa-th-large',
      N_('Tile View'),
      nil,
      :klass     => ApplicationHelper::Button::View,
      :url       => "\#{@gtl_url}",
      :url_parms => "?type=tile"),
    twostate(
      :view_list,
      'fa fa-th-list',
      N_('List View'),
      nil,
      :klass     => ApplicationHelper::Button::View,
      :url       => "\#{@gtl_url}",
      :url_parms => "?type=list"),
  ])
  button_group('download_main', [
    select(
      :download_choice,
      'fa fa-download fa-lg',
      N_('Download'),
      nil,
      :items => [
        button(
          :download_text,
          'fa fa-file-text-o fa-lg',
          N_('Download this report in text format'),
          N_('Download as Text'),
          :url       => "/download_data",
          :url_parms => "?download_type=text"),
        button(
          :download_csv,
          'fa fa-file-text-o fa-lg',
          N_('Download this report in CSV format'),
          N_('Download as CSV'),
          :url       => "/download_data",
          :url_parms => "?download_type=csv"),
        button(
          :download_pdf,
          'fa fa-file-pdf-o fa-lg',
          N_('Download this report in PDF format'),
          N_('Download as PDF'),
          :klass     => ApplicationHelper::Button::Pdf,
          :url       => "/download_data",
          :url_parms => "?download_type=pdf"),
      ]
    ),
  ])
end
