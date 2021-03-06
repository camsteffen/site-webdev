// #docplaster
// #docregion
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'package:angular_tour_of_heroes/src/heroes_component.dart';
import 'package:angular_tour_of_heroes/src/hero_service.dart';
import 'package:angular_tour_of_heroes/src/dashboard_component.dart';
// #docregion hero-detail-import
import 'package:angular_tour_of_heroes/src/hero_detail_component.dart';
// #enddocregion hero-detail-import

@Component(
    selector: 'my-app',
    // #docregion template
    template: '''
      <h1>{{title}}</h1>
      <nav>
        <a [routerLink]="['Dashboard']">Dashboard</a>
        <a [routerLink]="['Heroes']">Heroes</a>
      </nav>
      <router-outlet></router-outlet>''',
    // #enddocregion template
    // #docregion style-urls
    styleUrls: const ['app_component.css'],
    // #enddocregion style-urls
    directives: const [ROUTER_DIRECTIVES],
    providers: const [HeroService, ROUTER_PROVIDERS])
@RouteConfig(const [
  // #docregion dashboard-route
  const Route(
      path: '/dashboard',
      name: 'Dashboard',
      component: DashboardComponent,
      useAsDefault: true),
  // #enddocregion dashboard-route
  // #docregion hero-detail-route
  const Route(
      path: '/detail/:id', name: 'HeroDetail', component: HeroDetailComponent),
  // #enddocregion hero-detail-route
  const Route(path: '/heroes', name: 'Heroes', component: HeroesComponent)
])
class AppComponent {
  final title = 'Tour of Heroes';
}
