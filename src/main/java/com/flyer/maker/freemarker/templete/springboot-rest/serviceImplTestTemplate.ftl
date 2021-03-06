package ${projectPackage}.service.impl;

import ${projectPackage}.AbstractTest;
import ${projectPackage}.dao.${clazz.bclassName}Dao;
import ${projectPackage}.data.${clazz.bclassName}Data;
import ${projectPackage}.domain.${clazz.bclassName};
import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.MockitoAnnotations;
import org.springframework.boot.test.mock.mockito.MockBean;

import javax.inject.Inject;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.notNullValue;
import static org.junit.Assert.assertThat;
import static org.mockito.Matchers.any;
import static org.mockito.Matchers.anyInt;
import static org.mockito.Matchers.anyLong;
import static org.mockito.Mockito.*;

/**
 * Created by ${author} on ${.now?string('yyyy/MM/dd')}.
 */
public class ${clazz.bclassName}ServiceImplTest extends AbstractTest {

    @MockBean
    private ${clazz.bclassName}Dao ${clazz.className}Dao;

    @Inject
    @InjectMocks
    private ${clazz.bclassName}ServiceImpl ${clazz.className}Service;

    @Before
    public void setUp() {
        MockitoAnnotations.initMocks(this);
    }

    @Test
    public void save${clazz.bclassName}() throws Exception {
        when(${clazz.className}Dao.save${clazz.bclassName}(any(${clazz.bclassName}.class))).thenReturn(1);
        assertThat(${clazz.className}Service.save${clazz.bclassName}(${clazz.bclassName}Data.generatOne(true)), is(notNullValue()));
        verify(${clazz.className}Dao, times(1)).save${clazz.bclassName}(any(${clazz.bclassName}.class));
    }

    @Test
    public void remove${clazz.bclassName}() throws Exception {
        when(${clazz.className}Dao.remove${clazz.bclassName}(any${clazz.idTypeSimple}())).thenReturn(1);
        assertThat(${clazz.className}Service.remove${clazz.bclassName}(any${clazz.idTypeSimple}()), is(1));
        verify(${clazz.className}Dao, times(1)).remove${clazz.bclassName}(any${clazz.idTypeSimple}());
    }

    @Test
    public void update${clazz.bclassName}() throws Exception {
        when(${clazz.className}Dao.update${clazz.bclassName}(any(${clazz.bclassName}.class))).thenReturn(1);
        assertThat(${clazz.className}Service.update${clazz.bclassName}(${clazz.bclassName}Data.generatOne(true)), is(1));
        verify(${clazz.className}Dao, times(1)).update${clazz.bclassName}(any(${clazz.bclassName}.class));
    }

    @Test
    public void find${clazz.bclassName}ById() throws Exception {
        when(${clazz.className}Dao.find${clazz.bclassName}ById(any${clazz.idTypeSimple}())).thenReturn(${clazz.bclassName}Data.generatOne(true));
        assertThat(${clazz.className}Service.find${clazz.bclassName}ById(any${clazz.idTypeSimple}()), is(notNullValue()));
        verify(${clazz.className}Dao, times(1)).find${clazz.bclassName}ById(any${clazz.idTypeSimple}());
    }

}
