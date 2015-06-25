# Created on 2012-APR-27 (Friday)
# Modified on 2015-JUN-23 (Tuesday)
#
#' @title Show R Manuals Literally Translated in Korean
#'
#' @description Utility function to find and display R manuals literally translated in Korean.  
#' 
#' @param what a character string; \code{R-intro} is set as a default manual. 
#' @param type a character string; \code{txt} is set as a default format.
#' @param language a character string; \code{ko} is set as a default language.
#'
#' @usage Rmanual(what, type, language)
#'
#' @details R version 2.1.0 and later support Korean translations of program messages.  The continuous efforts have been made by \href{http://developer.r-project.org/TranslationTeams.html}{R Translation Teams}.   The R Documentation files are licensed under the GPL, version 2 or 3.   This means that the pilot project to translate them into Korean has permission to reproduce them and translate them.   
#' 
#' This work is with GNU \code{gettext} portable object (po) and portable object template (pot) files.  The pot file is updated a weekly basis or whenever changes are necessary.  Comments and corrections via email to Chel Hee Lee is of course most welcome.   In order to voluntarily participate in or offer your help with this translation, please contact the maintainer.   To check the change and progress of Korean translation, please visit \url{http://www.openstatistics.net}.
#'
#' @section Notes:
#' For more information, please see the sections \href{http://cran.r-project.org/doc/manuals/r-release/R-admin.html#Internationalization}{7 Internationalization and Localization} and \href{http://cran.r-project.org/doc/FAQ/R-FAQ.html#R-Bugs}{9.2 R Bugs}.
#'
#' @section Contributors:
#' Continuous efforts have been made by the following contributors.  Note that every single contributor assigns the copyright of contribution to Chel Hee Lee when he or she voluntarily participates in the translation.   Due to the incomplete record keeping, your name may not be found here.   Please let the maintainer recognize your contribution, and the list will be then updated.     
#' 
#' For the \emph{Introduction to R} manual, 
#' \itemize{
#' \item Chel Hee Lee \email{chl948@@mail.usask.ca} University of Saskatchewna, Saskatoon, Saskatchewan, Canada, 2008--2015
#' \item Edward Kang \email{ewkang@@hotmail.com} Sydney Area, Australia, 2015
#' \item Heather Kim \email{heatherkimca@@gmail.com} University of Manitoba, Canada, 2009--2013
#' \item Lijin Joo \email{lijin.joo@@nyu.edu} New York University, New York, New York, U.S.A., 2009, 2012--2013
#' \item Johan Jung \email{jungyha@@gmail.com} Pacific Biological Station, Department of Fisheries and Ocean, Canada, 2009--2011
#' \item Seyeon Lee \email{mandooms@@gmail.com} Ewha Women's University, Seoul, Korea, 2009
#' }
#' 
#' For the \emph{R Installation and Administration} manual, 
#' \itemize{
#' 	\item Chel Hee Lee \email{chl948@@mail.usask.ca}, University of Saskatchewan, Saskatoon, Saskatchewan, Canada, 2009--2015
#' 	\item Edward Kang \email{ewkang@@hotmail.com}, Manager, Advanced Analytics, Australian Customs and Border Protection Services, Canberra, Australia, 2013
#' }
#'
#' For the \emph{R-FAQ} manual, 
#' \itemize{
#' 	\item Chel Hee Lee \email{chl948@@mail.usask.ca}, University of Saskatchewan, Saskatoon, Saskatchewan, Canada, 2008--2015
#' 	\item Edward Kang \email{ewkang@@hotmail.com}, Sydney Area, Australia, 2015
#' 	\item Heather Kim \email{heatherkimca@@gmail.com}, University of Mantioba, Winnipeg, Manitoba, Canada, 2013 
#' }
#'
#' For the \emph{R for Windows FAQ} manual, 
#' \itemize{
#' \item Chel Hee Lee \email{chl948@@mail.usask.ca}, University of Saskatchewan, Saskatoon, Saskatchewan, Canada, 2010--2015
#' \item Sunyoung Kim \email{skim1970@@hanmail.net}, Onatrio, Toronto, Canada, 2015
#' \item Heather Kim \email{heatherkimca@@gmail.com}, University of Mantioba, Winnipeg, Manitoba, Canada, 2013 
#' }
#'
#' @author Chel Hee Lee \email{chl948@@mail.usask.ca}
#'
#' @examples
#' Rmanual(what="R-intro")
#' Rmanual(what="R-intro", type="html")
#' @export
Rmanual <- function(what=c("R-intro", "R-FAQ", "R-admin", "rw-FAQ", "R-exts", "R-lang", "RMacOSX-FAQ", "R-data"), type=c("html", "txt"), language="ko"){

	if (missing(type)) type <- "txt"
	if (missing(what)) what <- "R-intro"
	if (language != "ko") stop("Currently, only Korean translation is provided.")
	stopifnot(type %in% c("html", "txt"))
	if (what %in% c("R-exts", "R-lang", "RMacOSX-FAQ", "R-data")) stop("Translation is available for only \"R-intro\", \"R-FAQ\", \"R-admin\", and \"rw-FAQ\" manuals at this moment.  In order to see the change or progress of translation, please visit \\url{http://www.openstatistics.net}.")
	
	cat("This translation is based on the manuals for R-devel (Rev: 68577, 2015-06-23 15:17:28 -0600 Tue, 23 Jun 2015).\nComments and corrections via email to the maintainer is of course most welcome.\n")
	
	if (type == "txt"){
		filename <- paste(file.path(path.package("translation.ko", path.package()), "doc/"), what, "-", language, sep="")
		file.show(filename)
	}
	
	if (type == "html") {
		filename <- paste("https://homepage.usask.ca/~chl948/doc/manual/", what, "-ko.html", sep="")
		browseURL(url=filename)
	}
	
}
