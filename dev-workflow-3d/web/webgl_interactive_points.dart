import 'package:threejs/three.dart' as THREE;
import 'package:js/js_util.dart' as js_util;
import 'dart:html';
import 'dart:math';
import "dart:typed_data";

var renderer;
THREE.Scene scene;
THREE.PerspectiveCamera camera;
THREE.Mesh cone;
THREE.Mesh cylinder;
double fieldOfView;

Element container;

bool mouseIsDown = false;
Point prevMouseLocation = new Point(0, 0);
int tick = 0;

main() {
  container = document.getElementById('container');

  // mouse event listeners
  container.onMouseDown.listen((MouseEvent e) => mouseIsDown = true);
  container.onMouseUp.listen((MouseEvent e) => mouseIsDown = false);
  container.onMouseMove.listen(rotate);
  container.onMouseWheel.listen(zoom);


  scene = new THREE.Scene();
  fieldOfView = 75.0;
  camera = new THREE.PerspectiveCamera(
      fieldOfView, window.innerWidth / window.innerHeight, 0.1, 1000);

  renderer = new THREE.WebGLRenderer()
    ..setPixelRatio(window.devicePixelRatio)
    ..setSize(window.innerWidth, window.innerHeight);
  container.append(renderer.domElement);

  var geometry = new THREE.ConeGeometry(1, 1, 32);
  var material = new THREE.MeshPhongMaterial(
      new THREE.MeshPhongMaterialParameters(color: 0x00ff00));
  cone = new THREE.Mesh(geometry, material);
  scene.add(cone);

  var directionalLight = new THREE.DirectionalLight(0xffffff, 0.5 );
  directionalLight.position.JS$set( 0, 4, 0 );
  scene.add(directionalLight);

  var ambientLight = new THREE.AmbientLight(0x404040); // soft white light
  scene.add(ambientLight);


//  var geometry2 = new THREE.CylinderGeometry(1, 0, 2, 32);
//  var material2 = new THREE.MeshBasicMaterial(
//      new THREE.MeshBasicMaterialParameters(color: 0xffff00));
//  cylinder = new THREE.Mesh(geometry2, material2);
//  scene.add(cylinder);

  camera.position.z = 5;
  camera.lookAt(new THREE.Vector3(0, 0, 0));

  renderScene();
}

renderScene([_]) {
  window.requestAnimationFrame(renderScene);
  renderer.render(scene, camera);
}

void rotate(MouseEvent e) {

  if (mouseIsDown) {
    Point delta = new Point(
        e.offset.x - prevMouseLocation.x,
        e.offset.y - prevMouseLocation.y);

    var deltaRotationQuaternion = new THREE.Quaternion().setFromEuler(
        new THREE.Euler(toRadians(delta.y), toRadians(delta.x), 0, 'XYZ'));

    cone.quaternion.multiplyQuaternions(deltaRotationQuaternion, cone.quaternion);
  }

  prevMouseLocation = e.offset;
}

void zoom(WheelEvent e) {
  fieldOfView -= e.deltaY * 0.1;
  fieldOfView = max(10, min(150.0, fieldOfView));
  THREE.Matrix4 perspective = new THREE.Matrix4();
  perspective.makePerspective(fieldOfView, window.innerWidth / window.innerHeight, 0.1, 1000);
  camera.projectionMatrix = perspective;
}


double toRadians(angle) {
  return angle * (PI / 180);
}
