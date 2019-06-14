set(Module_SRCS)

file(GLOB cmake_files "${CMAKE_CURRENT_SOURCE_DIR}/*.catalyst.cmake")

foreach (cmake_file IN LISTS cmake_files)
  include("${cmake_file}")
endforeach ()

if(PARAVIEW_USE_MPI)
  include(vtkMPI)
endif()
vtk_module_library(vtkPVVTKExtensionsRendering ${Module_SRCS})
if(PARAVIEW_USE_MPI)
  vtk_mpi_link(${vtk-module})
endif()
