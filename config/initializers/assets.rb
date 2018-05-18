
# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )


# Add this to load css in view.html.erb
Rails.application.config.assets.precompile += %w( home/bootstrap.min.css )
Rails.application.config.assets.precompile += %w( home/style.css )
Rails.application.config.assets.precompile += %w( home/style_old.css )
Rails.application.config.assets.precompile += %w( home/flexslider.css )
Rails.application.config.assets.precompile += %w( home/responsive.css )
Rails.application.config.assets.precompile += %w( home/font-awesome.min.css )
Rails.application.config.assets.precompile += %w( home/animate.css )
Rails.application.config.assets.precompile += %w( home/jquery.fancybox.css )
Rails.application.config.assets.precompile += %w( home/select-style.css )
Rails.application.config.assets.precompile += %w( home/huan.css)




# Add css for admin (index.html.erb)
Rails.application.config.assets.precompile += %w( admin/bootstrap.min.css )
Rails.application.config.assets.precompile += %w( admin/core.css )
Rails.application.config.assets.precompile += %w( admin/components.css )
# Notify: Althought icons in assets is icons.scss but in here is icons.css
Rails.application.config.assets.precompile += %w( admin/icons.css )
Rails.application.config.assets.precompile += %w( admin/pages.css )
Rails.application.config.assets.precompile += %w( admin/menu.css )
Rails.application.config.assets.precompile += %w( admin/responsive.css )
Rails.application.config.assets.precompile += %w( admin/morris.css )
Rails.application.config.assets.precompile += %w( admin/magnific-popup.css )
Rails.application.config.assets.precompile += %w( admin/datatables.css )
Rails.application.config.assets.precompile += %w( admin/summernote.css )
Rails.application.config.assets.precompile += %w( admin/custombox.min.css )
Rails.application.config.assets.precompile += %w( home/bootstrap-slider.min.css )
Rails.application.config.assets.precompile += %w( home/chosen.jquery.min.js )
Rails.application.config.assets.precompile += %w( home/chosen.min.css )
Rails.application.config.assets.precompile += %w( sweetalert/sweetalert.css )
Rails.application.config.assets.precompile += %w( sweetalert/sweetalert-dev.js )
Rails.application.config.assets.precompile += %w( sweetalert/sweetalert.js )





# Medium editor
Rails.application.config.assets.precompile += %w( medium-editor/medium-editor.css )
Rails.application.config.assets.precompile += %w( medium-editor/medium-editor.js )
Rails.application.config.assets.precompile += %w( medium-editor/editor.js )

# Search Working address
Rails.application.config.assets.precompile += %w( search/geocomplete.js )
Rails.application.config.assets.precompile += %w( home/parallax.js )

#Dropify
Rails.application.config.assets.precompile += %w( dropify/dropify.css)
Rails.application.config.assets.precompile += %w( dropify/dropify.js)
Rails.application.config.assets.precompile += %w( dropify/dropify.min.css)
Rails.application.config.assets.precompile += %w( Dropifyify/dropify.min.js)
Rails.application.config.assets.precompile += %w( dropify/dropify.min.js )
Rails.application.config.assets.precompile += %w( dropify/dropify-setting.js )

# add js to admin theme

Rails.application.config.assets.precompile += %w( admin/jquery.min.js )
Rails.application.config.assets.precompile += %w( admin/bootstrap.min.js )
Rails.application.config.assets.precompile += %w( admin/detect.js )
Rails.application.config.assets.precompile += %w( admin/fastclick.js )
Rails.application.config.assets.precompile += %w( admin/jquery.blockUI.js )
Rails.application.config.assets.precompile += %w( admin/wave.js )
Rails.application.config.assets.precompile += %w( admin/waves.js )
Rails.application.config.assets.precompile += %w( admin/jquery.nicescroll.js )
Rails.application.config.assets.precompile += %w( admin/jquery.slimscroll.js )
Rails.application.config.assets.precompile += %w( admin/jquery.scrollTo.min.js )
Rails.application.config.assets.precompile += %w( admin/jquery.knob.js )
Rails.application.config.assets.precompile += %w( admin/morris.min.js )
Rails.application.config.assets.precompile += %w( admin/raphael-min.js )
Rails.application.config.assets.precompile += %w( admin/jquery.dashboard.js )
Rails.application.config.assets.precompile += %w( admin/jquery.core.js )
Rails.application.config.assets.precompile += %w( admin/jquery.app.js )
Rails.application.config.assets.precompile += %w( admin/modernizr.min.js )
Rails.application.config.assets.precompile += %w( admin/jquery.magnific-popup.min.js )
Rails.application.config.assets.precompile += %w( admin/jquery.dataTables.js )
Rails.application.config.assets.precompile += %w( admin/dataTables.bootstrap.js )
Rails.application.config.assets.precompile += %w( admin/numeric-input-example.js )
Rails.application.config.assets.precompile += %w( admin/mindmup-editabletable.js )
Rails.application.config.assets.precompile += %w( admin/datatables.editable.init.js )
Rails.application.config.assets.precompile += %w( admin/tinymce.min.js )
Rails.application.config.assets.precompile += %w( admin/jquery.tinymce.min.js )
Rails.application.config.assets.precompile += %w( admin/huannguyen.js )
Rails.application.config.assets.precompile += %w( home/jquery.nice-select.min.js )
Rails.application.config.assets.precompile += %w( home/moment.js )
Rails.application.config.assets.precompile += %w( home/ware.js )
Rails.application.config.assets.precompile += %w( home/bootstrap-datetimepicker.js )
Rails.application.config.assets.precompile += %w( home/parttimebee-custom.js )
Rails.application.config.assets.precompile += %w( home/bootstrap-slider.js )
Rails.application.config.assets.precompile += %w( home/listingscript.js )




Rails.application.config.assets.precompile += %w(admin/summernote.min.js)
Rails.application.config.assets.precompile += %w(admin/custombox.min.js)
Rails.application.config.assets.precompile += %w(admin/legacy.min.js)

           
# Add this to load js in view.html.erb
Rails.application.config.assets.precompile += ['home/jquery.js']
Rails.application.config.assets.precompile += ['home/bootstrap.min.js']
Rails.application.config.assets.precompile += ['home/jquery.flexslider.js']
Rails.application.config.assets.precompile += %w( home/jquery.validate.js )
Rails.application.config.assets.precompile += %w( home/custom.js )
Rails.application.config.assets.precompile += %w( home/bootstrap-datepicker.js )
Rails.application.config.assets.precompile += %w( home/jquery.fancybox.js )
Rails.application.config.assets.precompile += %w( home/jquery.countdown.js )



Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf|otf|woff2)\z/

