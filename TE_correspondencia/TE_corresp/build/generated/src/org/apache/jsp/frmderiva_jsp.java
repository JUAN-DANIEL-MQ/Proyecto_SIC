package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class frmderiva_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_if_test.release();
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"es\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("        <title>Envios</title>\n");
      out.write("        <style>\n");
      out.write("   body {\n");
      out.write("   background: -webkit-linear-gradient(to top, hsla(0, 100%, 50%, .50), \n");
      out.write("                                               hsla(57, 100%, 50%, .50), \n");
      out.write("                                               hsla(108, 100%, 29%, .50)), \n");
      out.write("                                               url(../IMG/PORT_2.jpeg);  \n");
      out.write("   \n");
      out.write("   background: linear-gradient(to top, hsla(0, 100%, 50%, .50), \n");
      out.write("                                       hsla(57, 100%, 50%, .50), \n");
      out.write("                                       hsla(108, 100%, 29%, .50)), \n");
      out.write("                                       url(../IMG/PORT_2.jpeg);\n");
      out.write("   }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <h1>Correspondencias </h1>\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "WEB-INF/menu.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("opcion", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("corres", request.getCharacterEncoding()), out, false);
      out.write("\n");
      out.write("            <br>\n");
      out.write("            <form action=\"DerCorrespondencia\" method=\"post\" >\n");
      out.write("                <input type=\"hidden\" name=\"id\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${derivacion.id_derivacion}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\n");
      out.write("                ");
      out.write(' ');
      out.write(" \n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"\" class=\"form-label\">Accion</label>\n");
      out.write("                    <select name=\"id_accion\" class=\"form-control\">\n");
      out.write("                        <option value=\"\">-- Seleccione --</option>\n");
      out.write("                        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                    </select>\n");
      out.write("                </div>\n");
      out.write("                ");
      out.write(' ');
      out.write(" \n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"\" class=\"form-label\">ID Correspondencia</label>\n");
      out.write("                    <input type=\"text\" class=\"form-control\" name=\"id_co\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${derivacion.id_co}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" placeholder=\"Correspondencia\">                    \n");
      out.write("                </div>\n");
      out.write("                ");
      out.write(" \n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"\" class=\"form-label\">ID Funcionario</label>\n");
      out.write("                    <input type=\"text\" class=\"form-control\" name=\"id_funcionario\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${derivacion.id_funcionario}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" placeholder=\"Funcionario\">                    \n");
      out.write("                </div>\n");
      out.write("                ");
      out.write(" \n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label for=\"\" class=\"form-label\">Fecha Recepcion</label>\n");
      out.write("                    <input type=\"date\" class=\"form-control\" name=\"fecha_recepcion\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${derivacion.fecha_recepcion}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" placeholder=\"Fecha de Recepcion\">                    \n");
      out.write("                </div>\n");
      out.write("                ");
      out.write(" \n");
      out.write("                <button type=\"submit\" class=\"btn btn-primary\">Guardar</button>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8\" crossorigin=\"anonymous\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("item");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${lista_accion}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("                            <option value=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${item.id_accion}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write('"');
          out.write(' ');
          if (_jspx_meth_c_if_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write('>');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${item.nombre_accion}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write("</option>\n");
          out.write("                        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${derivacion.id_accion == item.id_accion}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                                        selected\n");
        out.write("                                    ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }
}
