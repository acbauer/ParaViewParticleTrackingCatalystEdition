set (__dependencies)
if (PARAVIEW_USE_MPI)
  set (__dependencies
    vtkParallelMPI
    )
endif()

vtk_module(vtkPVVTKExtensionsRendering
  DEPENDS
    ${__dependencies}
    vtkCommonExecutionModel

  TEST_DEPENDS
    vtkInteractionStyle
    vtkIOAMR
    vtkIOXML
    vtkTestingCore
    vtkTestingRendering

  TEST_LABELS
    PARAVIEW
  KIT
    vtkPVExtensions
)
