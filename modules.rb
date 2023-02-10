# modulos: forma de agrupar codigo ... 

module Model 
    class Company
    end

    class Employee 
    end
end

module Reports 
    class ExcelReport
        def build 
            puts "generating excel report ..."
        end
    end

    class EmailReport 
    end
end


excel_report = Reports::ExcelReport.new
excel_report.build
