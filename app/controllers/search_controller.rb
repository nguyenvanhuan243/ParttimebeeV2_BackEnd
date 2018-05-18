class SearchController < ApplicationController  
  $get_search_job
  def search_job
    $get_search_job = params[:searchjob][:search]
    $check_result_jobs = Job.where("title LIKE ?", "%#{$get_search_job}%").where(type_job: 'published')
    if $check_result_jobs.count.zero?
      redirect_to '/search-jobs-not-found?search=' +$get_search_job
      return
    else
      redirect_to '/search-jobs-found?search=' + $get_search_job
    end
  end

  def search_date
    date_from = params[:searchdate][:workingdatefrom]
    date_to   = params[:searchdate][:workingdateto]
    redirect_to "/job-listing?datefrom="+date_from+"&dateto="+date_to
  end
end
