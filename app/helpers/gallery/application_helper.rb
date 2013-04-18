module Gallery::ApplicationHelper
  
  def sweet_portfolio_form_for(record_or_name_or_array, *args, &proc)
    options = args.extract_options!
    form_for(
      record_or_name_or_array,
      *(args << options.merge(:builder => SweetPortfolio.config.form_builder.to_s.constantize)),
      &proc
    )
  end
  
end