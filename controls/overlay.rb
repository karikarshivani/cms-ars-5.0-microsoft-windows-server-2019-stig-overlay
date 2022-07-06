overlay_controls = input('overlay_controls')
system_categorization = input('system_categorization')

include_controls 'microsoft-windows-server-2019-stig-baseline' do

  ## SEMANTIC
  control 'V-93487' do
    desc 'check', 'Verify the CMS Root CA certificates are installed in the Trusted Root Store.'
    desc 'fix', 'Install the CMS Root CA certificates.'
  
    describe "For this CMS ARS 5.0 overlay, this control must be reviewed manually" do 
      skip "For this CMS ARS 5.0 overlay, this control must be reviewed manually"
    end
  end
  
  control "V-93489" do
    desc "check", "This is applicable to unclassified systems. It is NA for others.
    Verify that the CMS Interoperability Root Certificate Authority (CA) cross-certificates is installed in the Untrusted Certificates Store on unclassified systems."
    desc "fix", "Install the CMS Interoperability Root CA cross-certificates on unclassified systems."
    
    describe "For this CMS ARS 5.0 overlay, this control must be reviewed manually" do 
      skip "For this CMS ARS 5.0 overlay, this control must be reviewed manually"
    end
  end

  control "V-93491" do
    impact 0.0
    desc "caveat", "Not applicable for this CMS ARS 5.0 overlay, since the US DoD CCEB is not applicable to CMS"
    describe "Not applicable for this CMS ARS 5.0 overlay, since the US DoD CCEB is not applicable to CMS" do 
      skip "Not applicable for this CMS ARS 5.0 overlay, since the US DoD CCEB is not applicable to CMS"
    end
  end

  ## NA
  unless overlay_controls.empty? # Test with !oc.any?
    overlay_controls.each do |overlay_control|
      control overlay_control do
        impact 0.0
        desc "caveat", "Not applicable for this CMS ARS 5.0 overlay, since the related security control is not included in CMS ARS 5.0 for the system categorization of #{system_categorization}"
      end
    end
  end

end