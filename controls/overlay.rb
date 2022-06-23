overlay_controls = input('overlay_controls')
# puts input('overlay_controls').class
# puts overlay_controls == []
# puts overlay_controls.any?
# puts overlay_controls.empty?
# puts overlay_controls[0].nil?

include_controls 'microsoft-windows-server-2019-stig-baseline' do

  unless overlay_controls.empty?
    overlay_controls.each do |overlay_control|
      control overlay_control do
        impact 0.0
        desc "caveat", "Not applicable for this CMS ARS 5.0 overlay, since the related security control is not included in CMS ARS 5.0 for the system categorization of #{ENV["BASELINE"]}"
      end
    end
  end

end