include(vtkMPI)
include(vtkObjectFactory)

set(Module_SRCS)

file(GLOB cmake_files "${CMAKE_CURRENT_SOURCE_DIR}/*.catalyst.cmake")

foreach (cmake_file IN LISTS cmake_files)
  include("${cmake_file}")
endforeach ()

vtk_add_override(vtkResampleToImage vtkPResampleToImage)
vtk_add_override(vtkResampleWithDataSet vtkPResampleWithDataSet)
vtk_add_override(vtkAggregateDataSetFilter vtkDIYAggregateDataSetFilter)

vtk_object_factory_configure("${vtk_module_overrides}")
list(APPEND Module_SRCS
  ${CMAKE_CURRENT_BINARY_DIR}/${vtk-module}ObjectFactory.cxx)

add_definitions(-DDIY_NO_THREADS)

vtk_module_library(vtkFiltersParallelDIY2 ${Module_SRCS})
vtk_mpi_link(vtkFiltersParallelDIY2)
