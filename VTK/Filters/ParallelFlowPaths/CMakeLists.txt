include(vtkObjectFactory)

set(Module_SRCS
  vtkPStreamTracer.cxx
  vtkPParticlePathFilter.cxx
  vtkPParticleTracerBase.cxx
  )

# Overrides for object factory.
set(parallel_overrides
  StreamTracer
  ParticlePathFilter
  )

foreach(_override ${parallel_overrides})
  vtk_add_override(vtk${_override} vtkP${_override})
endforeach()
vtk_object_factory_configure("${vtk_module_overrides}")
list(APPEND Module_SRCS
  ${CMAKE_CURRENT_BINARY_DIR}/${vtk-module}ObjectFactory.cxx)

vtk_module_library(vtkFiltersParallelFlowPaths ${Module_SRCS})
