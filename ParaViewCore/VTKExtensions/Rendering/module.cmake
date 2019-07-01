vtk_module(vtkPVVTKExtensionsRendering
  DEPENDS
    ${__dependencies}
    vtkCommonExecutionModel
    vtkFiltersCore
    vtkParallelMPI
    vtkPVVTKExtensionsCore

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
